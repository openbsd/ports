# $OpenBSD: Makefile,v 1.21 2018/10/24 14:27:58 sthen Exp $

COMMENT=		curses based frontend for mpd

DISTNAME=		pms-0.42
EXTRACT_SUFX = 		.tar.bz2
CATEGORIES=		audio
REVISION =		8

HOMEPAGE=		https://ambientsound.github.io/pms/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 intl m ncursesw pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		devel/glib2

MODULES=		textproc/intltool

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pms/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# fix up timestamp to keep autotools cascade from triggering
post-patch:
	@touch -r ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure.ac

.include <bsd.port.mk>
