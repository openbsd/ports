# $OpenBSD: Makefile,v 1.4 2004/08/10 01:56:14 pvalchev Exp $
# Original from: Mark Kettenis

COMES_WITH=		3.6

ONLY_FOR_ARCHS=		alpha amd64 i386 sparc sparc64

COMMENT=		"GNU debugger"

DISTNAME=		gdb-6.0.90
CATEGORIES=		devel

HOMEPAGE=		http://sources.redhat.com/gdb/

MAINTAINER=		Mark Kettenis <kettenis@gnu.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://sources.redhat.com/pub/gdb/snapshots/branch/

SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	autoconf

ALL_TARGET=		all-gdb
INSTALL_TARGET=		install-gdb

.include <bsd.port.mk>
