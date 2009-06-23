# $OpenBSD: Makefile,v 1.44 2009/06/23 16:03:58 pirofti Exp $

COMMENT=	x86 machine simulator

DISTNAME=	bochs-2.4.1
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bochs/}

HOMEPAGE=	http://bochs.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m stdc++ termlib

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-acpi \
		 --enable-all-optimizations \
		 --enable-fpu \
		 --enable-ne2000 \
		 --enable-pci \
		 --enable-smp \
		 --enable-x86-64 \
		 --enable-usb \
		 --enable-usb-ohci \
		 --with-term

FLAVORS=	debug no_x11
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+= --disable-debugger-gui \
		 --enable-debugger \
		 --enable-x86-debugger \
		 --enable-readline
WANTLIB+=	curses readline
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --with-nogui
.else
USE_X11=	Yes
CONFIGURE_ARGS+= --with-x11
WANTLIB+=	ICE SM X11 Xau Xdmcp
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.html ${PREFIX}/share/doc/bochs
	@mv ${PREFIX}/share/doc/bochs/bochsrc-sample.txt \
	    ${PREFIX}/share/bochs/bochsrc

.include <bsd.port.mk>
