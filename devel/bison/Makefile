# $OpenBSD: Makefile,v 1.48 2013/06/26 16:24:00 espie Exp $

COMMENT=	GNU parser generator

DISTNAME=	bison-2.3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=bison/}
REVISION =	0

HOMEPAGE=	http://www.gnu.org/software/bison/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c
MODULES=	devel/gettext
BUILD_DEPENDS=	devel/m4

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-yacc
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
# work around horrible bug in a.out toolchain, having a variable called "accept"
# won't work, as it's named the same as a libc AND libpthread symbol with
# weak properties
.if !${PROPERTIES:L:Melf}
CFLAGS += -Daccept=ceci_nest_pas_une_pipe
.endif
