package com.AsePhase2.View;

import java.util.ArrayList;

public class Converter {

	public static String toJavascriptArray(ArrayList<String> arr) {
		StringBuffer sb = new StringBuffer();
		sb.append("[");
		for (int i = 0; i < arr.size(); i++) {
			sb.append("\"").append(arr.get(i)).append("\"");
			if (i + 1 < arr.size()) {
				sb.append(",");
			}
		}
		sb.append("]");
		return sb.toString();
	}
}
