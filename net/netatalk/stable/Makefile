# $OpenBSD: Makefile,v 1.1.1.1 2002/07/23 11:52:12 naddy Exp $

COMMENT=	"AFP file and print services for AppleTalk/IP networks"

DISTNAME=	netatalk-1.5.3.1
CATEGORIES=	net
HOMEPAGE=	http://netatalk.sourceforge.net/

MAINTAINER=	Ian McWilliam <i.mcwilliam@uws.edu.au>

# According to http://netatalk.sourceforge.net/
# now under GPL but the copyright shipping with
# the distribution is still BSD. What gives?

PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netatalk/}

SEPARATE_BUILD= 	concurrent

SYSCONFDIR=	/etc/netatalk
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} 
CONFIGURE_ARGS+=	--with-ssl=/usr
CONFIGURE_ARGS+=	--with-config-dir=${SYSCONFDIR}
CONFIGURE_ARGS+=	--with-pkgconfdir=${SYSCONFDIR}
CONFIGURE_ARGS+=	--with-uams-path=${PREFIX}/lib/netatalk/uams
CONFIGURE_ARGS+=	--with-tcp-wrappers

post-patch:
	@rm -rf $WRKSRC/sys/netatalk/*.h
	@cp /usr/include/netatalk/*.h ${WRKSRC}/sys/netatalk

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/netatalk
	${INSTALL_DATA_DIR} ${PREFIX}/share/nls/netatalk
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netatalk

.for i in AppleVolumes.default AppleVolumes.system \
	atalkd.conf papd.conf netatalk.conf
	${INSTALL_DATA} ${WRKSRC}/config/$i \
		${PREFIX}/share/examples/netatalk
.endfor

	${INSTALL_DATA} ${WRKBUILD}/config/afpd.conf \
		${PREFIX}/share/examples/netatalk
	${INSTALL_DATA} ${WRKBUILD}/distrib/initscripts/rc.atalk.bsd \
		${PREFIX}/share/examples/netatalk/rc.atalk
	${INSTALL_DATA} ${WRKBUILD}/etc/afpd/nls/maccode.* \
		${PREFIX}/share/nls/netatalk
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT \
		${PREFIX}/share/doc/netatalk

.for i in COPYRIGHT.mtab FAQ README.hidden-items README.mtab \
	README.mtab.distribution README.platforms README.veto
	${INSTALL_DATA} ${WRKSRC}/doc/$i \
		${PREFIX}/share/doc/netatalk
.endfor
 
.include <bsd.port.mk>
