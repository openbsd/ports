# $OpenBSD: Makefile,v 1.7 2009/10/01 14:09:54 sthen Exp $

COMMENT =		console interface for nagios

DISTNAME =		cnagios-0.25
PKGNAME =		${DISTNAME}p0
CATEGORIES =		net

HOMEPAGE =		http://noc.hep.wisc.edu/cnagios.html

WANTLIB =		c perl util curses m

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		ftp://noc.hep.wisc.edu/src/cnagios/ \
			ftp://noc.hep.wisc.edu/src/cnagios/old-versions/

NO_REGRESS =		Yes

RUN_DEPENDS =		:nagios->=3.0:net/nagios/nagios
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-nagios-data=3 \
			--with-etc-dir="${SYSCONFDIR}/cnagios" \
			--with-var-dir="/var/nagios" \
			--with-status-file="/var/nagios/status.dat"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

ALL_TARGET =		cnagios

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/cnagios ${PREFIX}/bin/
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/cnagios
	$(INSTALL_DATA) $(WRKSRC)/cnagios.help ${PREFIX}/share/doc/cnagios/
	$(INSTALL_DATA) $(WRKSRC)/README ${PREFIX}/share/doc/cnagios/
	@perl -pi -e 's,/usr/local/nagios/etc,${SYSCONFDIR}/cnagios,g;' \
	    -e 's,/usr/local/nagios/bin,${TRUEPREFIX}/bin,' \
	    ${PREFIX}/share/doc/cnagios/README
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/cnagios
	$(INSTALL_SCRIPT) $(WRKSRC)/cnagios.pl ${PREFIX}/share/examples/cnagios
	$(INSTALL_SCRIPT) $(WRKSRC)/cnagiosrc ${PREFIX}/share/examples/cnagios

.include <bsd.port.mk>
