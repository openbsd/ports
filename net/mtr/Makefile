# $OpenBSD: Makefile,v 1.11 2000/03/24 22:11:52 espie Exp $

DISTNAME=	mtr-0.41
CATEGORIES=	net
NEED_VERSION=	1.175

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/ \
		ftp://ftp.lysator.liu.se/mirror/unix/mtr/

MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
PATCHFILES=	mtr-041-v6-19990903b.diff.gz:0
PATCH_DIST_STRIP=	-p1

FAKE=		yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-ipv6

.include <bsd.port.mk>
