# $OpenBSD: Makefile,v 1.5 2006/10/28 10:30:41 espie Exp $

COMMENT=	"integer-only, fully Ogg Vorbis compliant decoder library"
DISTNAME=	tremor-20050411
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	vorbisidec           1.2      # .1.2
CATEGORIES=	audio
MASTER_SITES=	http://www.itee.uq.edu.au/~dlg/OpenBSD/

HOMEPAGE=	http://www.xiph.org/vorbis/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.4

BUILD_DEPENDS=	::devel/autoconf/${AUTOCONF_VERSION} \
		::devel/automake/${AUTOMAKE_VERSION} \
		::devel/metaauto

WRKDIST=	${WRKDIR}/Tremor

CONFIGURE_STYLE=gnu

pre-configure:
	cd ${WRKSRC} && env AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC} && env AUTOMAKE_VERSION=${AUTOMAKE_VERSION} libtoolize --automake
	cd ${WRKSRC} && env AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake --add-missing
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf

.include <bsd.port.mk>
