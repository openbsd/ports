# $OpenBSD: Makefile,v 1.4 2000/06/27 06:14:46 brad Exp $
# $FreeBSD: Makefile,v 1.5 2000/05/30 23:19:09 jasone Exp $

DISTNAME=	cook-2.15
CATEGORIES=	devel
NEED_VERSION=	1.307
MASTER_SITES=	http://www.canb.auug.org.au/~millerp/cook/

HOMEPAGE=       http://www.canb.auug.org.au/~millerp/cook/

LIB_DEPENDS=    intl::devel/gettext

MAINTAINER=	greg@nest.cx

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	RPM_BUILD_ROOT="${WRKINST}"

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= --libdir="${PREFIX}/share/locale"

.include <bsd.port.mk>
