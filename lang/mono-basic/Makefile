# $OpenBSD: Makefile,v 1.13 2014/07/18 13:44:30 ajacoutot Exp $

COMMENT=	Visual Basic .NET support for Mono
DISTNAME=	mono-basic-2.10
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	lang
MASTER_SITES=	http://origin-download.mono-project.com/sources/mono-basic/

HOMEPAGE=	http://www.mono-project.com/Visual_Basic

# LGPL v2
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

MODULES=	lang/mono

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--prefix="${TRUEPREFIX}"

TEST_TARGET=	test

pre-build:
	@echo ""; \
	echo "*** WARNING: you may have to increase your limits to build this ports".; \
	echo "*** See the man page for your shell and look for the 'limit' or"; \
	echo "*** 'ulimit' command. You may also want to see the login.conf(5)"; \
	echo "*** manual page. Some examples are:"; \
	echo "***       csh(1) and tcsh(1): limit openfiles <amount of file descriptors>"; \
	echo "***       ksh(1), zsh(1) and bash(1): ulimit -n <amount of file descriptors>"; \
	echo ""

.include <bsd.port.mk>
