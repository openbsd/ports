# $OpenBSD: Makefile,v 1.6 2015/06/05 05:40:19 ajacoutot Exp $

COMMENT=		fast lexical analyzer generator

DISTNAME=		flex-2.5.39
CATEGORIES=		devel textproc
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=flex/}

HOMEPAGE=		http://flex.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/help2man \
			devel/bison

YACC=			bison
USE_GMAKE=		Yes

LIBTOOL_FLAGS=		--tag=disable-shared

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--includedir=${PREFIX}/include/flex \
			--libdir=${PREFIX}/lib/flex \
			--program-prefix=g \
			--disable-shared
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_M4=/usr/bin/m4

post-install:
	rm ${PREFIX}/lib/flex/*.la
	rm ${PREFIX}/bin/flex++
	ln -s gflex ${PREFIX}/bin/gflex++

.include <bsd.port.mk>
