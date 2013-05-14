# $OpenBSD: Makefile,v 1.3 2013/05/14 08:09:24 sthen Exp $

COMMENT =	Mozilla sync server

PART =	full
MODPY_EGG_VERSION =	1.0
PKGNAME =	mozilla-sync-${MODPY_EGG_VERSION}.pre20120901
REVISION =	1

RUN_DEPENDS +=	www/mozilla-sync/core
RUN_DEPENDS +=	www/mozilla-sync/reg
RUN_DEPENDS +=	www/mozilla-sync/storage

#deps - versions come from server-full/prod-reqs.txt

RUN_DEPENDS +=	www/py-webob		#WebOb == 1.0.7
RUN_DEPENDS +=	www/py-paste		#Paste == 1.7.5.1
RUN_DEPENDS +=	www/py-paste-deploy	#PasteDeploy == 1.5
RUN_DEPENDS +=	www/py-paste-script	#PasteScript == 1.7.5

RUN_DEPENDS +=	www/py-mako		#Mako == 0.7
RUN_DEPENDS +=	textproc/py-MarkupSafe	#MarkupSafe == 0.15
RUN_DEPENDS +=	www/py-beaker		#Beaker == 1.6.3
RUN_DEPENDS +=	devel/py-simplejson	#simplejson == 2.5.2
RUN_DEPENDS +=	www/py-routes		#Routes == 1.13
RUN_DEPENDS +=	databases/py-sqlalchemy	#SQLAlchemy == 0.6.6
RUN_DEPENDS +=	www/py-wsgiproxy	#WSGIProxy == 0.2.2

RUN_DEPENDS +=	www/py-repoze-profile
RUN_DEPENDS +=	www/py-repoze-who	# repoze.who == 2.0
RUN_DEPENDS +=	www/py-recaptcha-client	#recaptcha-client == 1.0.6

RUN_DEPENDS +=	sysutils/py-metlog	#metlog-py == 0.9.1
RUN_DEPENDS +=	sysutils/py-cef		#cef == 0.3
RUN_DEPENDS +=	devel/py-greenlet	#greenlet == 0.3.4
RUN_DEPENDS +=	devel/py-gevent		#gevent == 0.13.7

RUN_DEPENDS +=	devel/py-zopeinterface	#zope.interface == 3.8, used by core/services/whoauth/backendauth.py

#memcache
#python-memcached == 1.48
#pylibmc == 1.2.3
#mysql
#MySQL-python == 1.2.3
#pymysql_sa == 1.0
#PyMySQL == 0.5

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mozilla-sync/
	${INSTALL_DATA}	${WRKSRC}/etc/sync.conf \
		${PREFIX}/share/examples/mozilla-sync/sync.conf
	${INSTALL_DATA}	${WRKSRC}/development.ini \
		${PREFIX}/share/examples/mozilla-sync/production.ini

.include <bsd.port.mk>
