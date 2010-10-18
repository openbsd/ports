# $OpenBSD: Makefile,v 1.10 2010/10/18 18:13:15 espie Exp $

COMMENT=	display kanji files in large letters

DISTNAME=	kbanner2
PKGNAME=	kbanner-2
CATEGORIES=	japanese

MASTER_SITES=	http://kanji.zinbun.kyoto-u.ac.jp/~yasuoka/ftp/program/
EXTRACT_SUFX=	.tar.Z

HOMEPAGE=	http://kanji.zinbun.kyoto-u.ac.jp/~yasuoka/program.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

ALL_TARGET=	kbanner

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
