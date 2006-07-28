# $OpenBSD: Makefile,v 1.9 2006/07/28 20:17:52 sturm Exp $

COMMENT=	"AFP file and print services for AppleTalk/IP networks"

DISTNAME=	netatalk-1.6.3
PKGNAME=	${DISTNAME}p3
CATEGORIES=	net
HOMEPAGE=	http://netatalk.sourceforge.net/

# According to http://netatalk.sourceforge.net/
# now under GPL but the copyright shipping with
# the distribution is still BSD. What gives?

PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes
WANTLIB=			c crypto des rpcsvc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netatalk/}

SEPARATE_BUILD= 	concurrent

CONFIGURE_STYLE=	gnu

CONFDIR=		${SYSCONFDIR}/netatalk
SUBST_VARS=		CONFDIR

# Experimantal at the moment.
# LIB_DEPENDS=	db.3::databases/db
# CONFIGURE_ARGS+=	--with-db3=${LOCALBASE}

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} 
CONFIGURE_ARGS+=	--with-ssl=/usr
CONFIGURE_ARGS+=	--with-config-dir=${CONFDIR}
CONFIGURE_ARGS+=	--with-pkgconfdir=${CONFDIR}
CONFIGURE_ARGS+=	--with-uams-path=${PREFIX}/lib/netatalk/uams
CONFIGURE_ARGS+=	--with-tcp-wrappers
CONFIGURE_ARGS+=	--disable-overwrite
CONFIGURE_ARGS+=	--with-did=last

post-patch:
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

.for i in FAQ README.hidden-items \
	README.platforms README.veto
	${INSTALL_DATA} ${WRKSRC}/doc/$i \
		${PREFIX}/share/doc/netatalk
.endfor
 
.include <bsd.port.mk>
