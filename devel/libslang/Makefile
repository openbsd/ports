# $OpenBSD: Makefile,v 1.32 2002/05/08 02:04:08 brad Exp $

COMMENT=		"stack-based interpreter for terminal applications"

VERSION=		1.4.5
DISTNAME=		slang-${VERSION}
PKGNAME=		libslang-${VERSION}
CATEGORIES=		devel
NEED_VERSION=	1.522
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v1.4/ \
				http://gd.tuwien.ac.at/editors/davis/slang/v1.4/

HOMEPAGE=		http://www.s-lang.org/

MAINTAINER=		Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autoconf

REGRESS_TARGET=		runtests
REGRESS_FLAGS=		TCAPLIB="-ltermlib"

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
ALL_TARGET= all elf
INSTALL_TARGET= install-elf
.endif
