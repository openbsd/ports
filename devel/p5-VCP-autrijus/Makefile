# $OpenBSD: Makefile,v 1.12 2015/01/21 14:28:00 sthen Exp $

COMMENT=	tool for copying resources between repositories

MODULES=	cpan
DISTNAME=	VCP-autrijus-snapshot-0.9-20050110
PKGNAME=	p5-VCP-autrijus-0.9
REVISION =	2
CATEGORIES=	devel
CPAN_AUTHOR=	AUTRIJUS

PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Regexp-Shellish>=0.93 \
		devel/p5-IPC-Run3>=0.01 \
		textproc/p5-XML-AutoWriter>=0.38 \
		textproc/p5-Text-Diff>=0.35 \
		textproc/p5-XML-Parser>=2.31 \
		www/p5-PodToHTML>=0.05
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
