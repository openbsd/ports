# $OpenBSD: Makefile,v 1.13 2009/11/17 22:27:37 jasper Exp $
# $FreeBSD: ports/devel/ffcall/Makefile,v 1.2 2001/08/31 14:20:18 sobomax Exp $
# Original From:                jagapen@home.com

# mmap configure test causes system hang
NOT_FOR_ARCHS=	m68k

COMMENT=	foreign function call libraries

DISTNAME=	ffcall-1.10
SHARED_LIBS=	avcall		1.0 \
		callback	1.0
CATEGORIES=	devel
MASTER_SITES=	http://www.haible.de/bruno/gnu/ \
		ftp://ftp.ilog.fr/pub/Users/haible/gnu/
HOMEPAGE=	http://www.haible.de/bruno/packages-ffcall.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

FAKE_FLAGS=	htmldir="\$$(datadir)/doc/ffcall/html"

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffcall/html

.include <bsd.port.mk>
