# $OpenBSD: Makefile,v 1.1.1.1 2004/02/20 19:54:58 espie Exp $
# $FreeBSD: ports/sysutils/e2fsprogs/Makefile,v 1.8 2003/02/20 19:00:47 knu Exp $


COMMENT=		"utilities to manipulate ext2 filesystems"

DISTNAME=		e2fsprogs-1.27
CATEGORIES=		sysutils

HOMEPAGE=		http://e2fsprogs.sourceforge.net/

MAINTAINER=		Laurent Corbes <caf@glot.net> \
			Sebastien Bombal <acide@bombal.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=e2fsprogs/}

SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-elf-shlibs
USE_GMAKE=		Yes

post-install:
	cd ${PREFIX}/sbin && mv fsck pfsck
	cd ${PREFIX}/man/man8 && mv fsck.8 pfsck.8

.include <bsd.port.mk>
