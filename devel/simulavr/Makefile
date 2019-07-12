# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:01 sthen Exp $

COMMENT=	AVR simulator

DISTNAME=	simulavr-0.1.2.7
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	http://www.nongnu.org/simulavr/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=simulavr/}

WANTLIB=		c curses

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--enable-curses=yes \
			--disable-versioned-doc

USE_GMAKE=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS} \
			textproc/texi2html \
			print/texlive/base
RUN_DEPENDS=		devel/avr/binutils \
			devel/avr/gcc \
			devel/avr/libc

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test_c/Makefile.in

.include <bsd.port.mk>
