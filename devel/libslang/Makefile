# $OpenBSD: Makefile,v 1.43 2005/11/03 18:28:55 naddy Exp $

COMMENT=	"stack-based interpreter for terminal applications"

VERSION=	1.4.9
DISTNAME=	slang-${VERSION}
PKGNAME=	libslang-${VERSION}p2
CATEGORIES=	devel
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v1.4/ \
		http://gd.tuwien.ac.at/editors/davis/slang/v1.4/

HOMEPAGE=	http://www.s-lang.org/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf no-autoheader
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autoconf

REGRESS_TARGET=		runtests
REGRESS_FLAGS=		TCAPLIB="-ltermlib"

pre-patch:
.for f in aclocal.m4 configure.in
	@cd ${WRKSRC} && ln -sf autoconf/${f} ${f}
.endfor

.include <bsd.port.mk>

.if !(defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes")
ALL_TARGET= all elf
INSTALL_TARGET= install-elf
.endif
