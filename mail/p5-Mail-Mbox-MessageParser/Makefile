# $OpenBSD: Makefile,v 1.11 2016/01/01 11:41:26 ajacoutot Exp $

COMMENT=	fast and simple mbox folder reader

MODULES=	cpan
DISTNAME=	Mail-Mbox-MessageParser-1.5105
CATEGORIES=	mail

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	devel/p5-Benchmark-Timer \
		devel/p5-File-Slurp \
		devel/p5-FileHandle-Unget \
		www/p5-URI

RUN_DEPENDS=	devel/p5-FileHandle-Unget \
		archivers/bzip2

TEST_DEPENDS=	textproc/p5-Text-Diff

CONFIGURE_ARGS=	BZIP2=${LOCALBASE}/bin/bzip2

.include <bsd.port.mk>
