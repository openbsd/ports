# $OpenBSD: Makefile,v 1.17 2010/10/19 07:43:02 espie Exp $

COMMENT=	syslogd replacement

V =		3.1.2
DISTNAME =	syslog-ng-$V
CATEGORIES =	sysutils

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

HOMEPAGE =	http://www.balabit.com/network-security/syslog-ng/

# GPL v2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://www.balabit.com/downloads/files/syslog-ng/open-source-edition/$V/source/
DISTFILES =	syslog-ng_$V.tar.gz

MODULES =	devel/gettext
 
WANTLIB =	c pcre wrap crypto ssl z
 
LIB_DEPENDS = 	glib-2.0::devel/glib2 \
 		evtlog::sysutils/eventlog

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-tcp-wrapper \
			--with-pidfile-dir=/var/run \
			--disable-sql
CONFIGURE_ENV +=	OPENSSL_CFLAGS="-I/usr/include/openssl" \
			OPENSSL_LIBS="-lssl -lcrypto"
USE_GROFF =	Yes

CFLAGS +=	-I${LOCALBASE}/include
 
DOC =		${PREFIX}/share/doc/syslog-ng/
EXAMPLES =	${PREFIX}/share/examples/syslog-ng/
 
#post-extract:
#	tar -C ${WRKBUILD} -xzf ${WRKSRC}/doc/reference/syslog-ng.html.tar.gz

post-configure:
	cd ${WRKSRC}/src && mv Makefile Makefile.was && \
		sed '/^syslog_ng_ctl_LDADD = /s/-lwrap //' Makefile.was > Makefile

pre-install:
	cd ${WRKSRC}/doc/man && perl -pi -e 's@/opt/syslog\\-ng/etc/syslog\\-ng/@${SYSCONFDIR:S/-/\\-/g}/@g' *.[158]
 
post-install:
#	${INSTALL_DATA_DIR} ${DOC}
#	${INSTALL_DATA} ${WRKBUILD}/syslog-ng.html/index.html ${DOC}
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA} ${FILESDIR}/syslog-ng.conf \
		${EXAMPLES}/syslog-ng.conf.sample

.include <bsd.port.mk>
CONFIGURE_ARGS+=	--sysconfdir=${SYSCONFDIR}/syslog-ng
