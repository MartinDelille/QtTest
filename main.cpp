#include "QtTestWindow.h"
#include <QApplication>

#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>

int main(int argc, char *argv[])
{
	boost::property_tree::ptree pt;

	pt.put("test", "coucou");

	std::ofstream file("test.xml");

	boost::property_tree::xml_writer_settings<std::string> settings = boost::property_tree::xml_writer_make_settings<std::string>('\t', 1);
	boost::property_tree::write_xml(file, pt, settings);

	file.close();

	return 0;
}
