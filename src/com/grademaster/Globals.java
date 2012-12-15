package com.grademaster;

import com.grademaster.data.RawLocalLoader;
import com.grademaster.data.XMLInterface;
import com.grademaster.data.objects.Config;
import com.grademaster.data.xml.XMLConfigAdapter;
import com.grademaster.logging.Logger;

public class Globals {
	private static Config CON;
	public static Logger log = new Logger();
	private static String configURL = System.getProperty("user.dir")+System.getProperty("file.separator")+"xml/config.xml";
	
	public static String getConfigURL() {
		return configURL;
	}
	
	public static void setConfigURL(String u) {
		if (u==configURL) {
			return;
		} else {
			configURL = u;
			updateConfig();
		}		
	}
	
	// Forces a reload of the main config file
	public static void updateConfig() {
		CON = loadConfig();
	}
	//Loads config with cache
	public static Config getConfig() {
		if (CON == null) {
			CON = loadConfig();
		}
		return CON;
	}
	// Loads config bypassing cache
	public static Config loadConfig() {
		XMLInterface i = new XMLInterface(new RawLocalLoader(configURL), new XMLConfigAdapter());
		Config con = null;
		try {
			con = (Config) i.getData();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			log.log(e);
		}
		return con;
	}
}