#
# Makefile for building and installing apache
#
SERVERROOT=@@PREFIX@@

all::
	cd src; ${MAKE} PREFIX=@@PREFIX@@ $@

configure::
	cd src; ./Configure

INSTALL_FILE=${INSTALL} -c -m 644 -o bin -g bin

CONF_DIR=	$(SERVERROOT)/etc/apache
DOC_DIR=	$(SERVERROOT)/www/docs
DOC_FILES=	apache_pb.gif index.html

MAN_DIR=	$(SERVERROOT)/www/docs/manual
MAN_FILES=	LICENSE TODO bind.html cgi_path.html content-negotiation.html \
		custom-error.html dns-caveats.html env.html footer.html \
		handler.html header.html index.html install.html \
		invoking.html keepalive.html location.html \
		man-template.html multilogs.html process-model.html \
		new_features_1_0.html new_features_1_1.html \
		new_features_1_2.html new_features_1_3.html sections.html \
		sourcereorg.html stopping.html suexec.html unixware.html \
		upgrading_to_1_3.html windows.html

IMG_DIR=	$(SERVERROOT)/www/docs/manual/images
IMG_FILES=	home.gif index.gif sub.gif 

MISC_DIR=	$(SERVERROOT)/www/docs/manual/misc
MISC_FILES=	API.html FAQ.html client_block_api.html compat_notes.html \
		descriptors.html fin_wait_2.html footer.html \
		header.html howto.html index.html known_bugs.html \
		known_client_problems.html nopgp.html perf-bsd44.html \
		perf-dec.html perf-hp.html perf-tuning.html perf.html \
		security_tips.html vif-info.html windoz_keepalive.html 

MOD_DIR=	$(SERVERROOT)/www/docs/manual/mod
MOD_FILES=	core.html directive-dict.html directives.html \
		footer.html header.html index.html mod_access.html \
		mod_actions.html mod_alias.html mod_asis.html mod_auth.html \
		mod_auth_anon.html mod_auth_db.html mod_auth_dbm.html \
		mod_autoindex.html mod_browser.html \
		mod_cern_meta.html mod_cgi.html mod_cookies.html \
		mod_digest.html mod_dir.html mod_dld.html mod_dll.html \
		mod_env.html mod_example.html mod_expires.html \
		mod_headers.html mod_imap.html mod_include.html mod_info.html \
		mod_isapi.html mod_log_agent.html mod_log_common.html \
		mod_log_config.html mod_log_referer.html mod_mime.html \
		mod_mime_magic.html mod_negotiation.html mod_proxy.html \
		mod_rewrite.html mod_setenvif.html mod_speling.html \
		mod_status.html mod_unique_id.html mod_userdir.html \
		mod_usertrack.html

VHOST_DIR=	$(SERVERROOT)/www/docs/manual/vhosts
VHOST_FILES=	details.html details_1_2.html examples.html fd-limits.html \
		footer.html header.html host.html index.html \
		ip-based.html name-based.html vhosts-in-depth.html \
		virtual-host.html

install::
	-mkdir -p ${CONF_DIR}
	-mkdir -p ${MAN_DIR}
	-mkdir -p $(SERVERROOT)/www/data
	-mkdir -p $(SERVERROOT)/www/icons
	-mkdir -p $(SERVERROOT)/www/cgi-bin
	${INSTALL} -c -s -m 755 -o root src/httpd $(SERVERROOT)/sbin
	${INSTALL} -c -m 644 -o nobody icons/* $(SERVERROOT)/www/icons
	for file in httpd.conf srm.conf access.conf ; do \
	    if [ ! -f ${CONF_DIR}/$$file ] ; then \
		sed -e "s#@@ServerRoot@@#${SERVERROOT}#g" < conf/$$file-dist > conf/$$file ; \
		${INSTALL_FILE} conf/$$file ${CONF_DIR}/$$file ; \
	    fi ; \
	    ${INSTALL_FILE} conf/$$file-dist ${CONF_DIR} ; \
	done
	for file in mime.types magic ; do \
	    if [ ! -f ${CONF_DIR}/$$file ] ; then \
		${INSTALL_FILE} conf/$$file ${CONF_DIR} ; \
	    fi ; \
	    ${INSTALL_FILE} conf/$$file ${CONF_DIR}/$${file}-dist ; \
	done
	-mkdir -p ${DOC_DIR}
	for file in ${DOC_FILES}; do \
	    ${INSTALL_FILE} htdocs/$$file ${DOC_DIR} ; \
	done
	-mkdir -p ${MAN_DIR}
	for file in ${MAN_FILES}; do \
	    ${INSTALL_FILE} htdocs/manual/$$file ${MAN_DIR} ; \
	done
	-mkdir -p ${IMG_DIR}
	for file in ${IMG_FILES}; do \
	    ${INSTALL_FILE} htdocs/manual/images/$$file ${IMG_DIR} ; \
	done
	-mkdir -p ${MISC_DIR}
	for file in ${MISC_FILES}; do \
	    ${INSTALL_FILE} htdocs/manual/misc/$$file ${MISC_DIR} ; \
	done
	-mkdir -p ${MOD_DIR}
	for file in ${MOD_FILES}; do \
	    ${INSTALL_FILE} htdocs/manual/mod/$$file ${MOD_DIR} ; \
	done
	-mkdir -p ${VHOST_DIR}
	for file in ${VHOST_FILES}; do \
	    ${INSTALL_FILE} htdocs/manual/vhosts/$$file ${VHOST_DIR} ; \
	done
