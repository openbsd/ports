# $OpenBSD: Makefile,v 1.8 2015/09/18 17:55:48 ajacoutot Exp $

COMMENT=	AVR simulator

DISTNAME=	simulavr-0.1.2.6
REVISION=	3
CATEGORIES=	devel

HOMEPAGE=	http://www.nongnu.org/simulavr/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=simulavr/}

WANTLIB=		c ncurses

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--enable-curses=yes \
			--disable-versioned-doc

USE_GMAKE=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/doxygen \
			textproc/texi2html \
			print/texlive/base
RUN_DEPENDS=		devel/avr/binutils \
			devel/avr/gcc \
			devel/avr/libc

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test_c/Makefile.in

.include <bsd.port.mk>
