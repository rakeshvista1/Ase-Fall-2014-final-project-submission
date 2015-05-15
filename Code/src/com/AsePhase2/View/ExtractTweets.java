package com.AsePhase2.View;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

public class ExtractTweets {

	static String file = "F:\\JavaWorkSpace\\com.AsePhase1\\src\\Twitter_new.txt";

	public ArrayList<String> getTweets() {
		ArrayList<String> tweetsList = new ArrayList<String>();

		// reading
		try {
			InputStream ips = new FileInputStream(file);
			InputStreamReader ipsr = new InputStreamReader(ips);
			BufferedReader br = new BufferedReader(ipsr);
			String line;
			while ((line = br.readLine()) != null) {
				tweetsList.add(line.split("\"text\":")[1]
						.split(",\"screenname\":")[0]);
			}
			System.out.println(tweetsList);

			br.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		} finally {
			return tweetsList;
		}
	}

}
