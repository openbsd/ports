# $OpenBSD: Makefile,v 1.7 2001/05/06 00:12:54 lebel Exp $
# $FreeBSD: Makefile,v 1.5 2000/05/30 23:19:09 jasone Exp $

COMMENT=	"like make(1), but more powerful and clean"

DISTNAME=	cook-2.16
CATEGORIES=	devel
NEED_VERSION=	1.402
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=       http://www.canb.auug.org.au/~millerp/cook/

LIB_DEPENDS=    intl::devel/gettext

MAINTAINER=	Gregory Steuck <greg@nest.cx>

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
