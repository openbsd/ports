# $OpenBSD: Makefile,v 1.6 2010/04/05 10:52:50 robert Exp $

COMMENT=	Visual Basic .NET support for Mono
DISTNAME=	mono-basic-2.6.2
PKGNAME=	${DISTNAME}p0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	lang
MASTER_SITES=	http://ftp.novell.com/pub/mono/sources/mono-basic/

HOMEPAGE=	http://www.mono-project.com/Visual_Basic

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPL v2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes

MODULES=	lang/mono

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--prefix="${TRUEPREFIX}"

REGRESS_TARGET=	test

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
