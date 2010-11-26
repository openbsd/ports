# $OpenBSD: Makefile,v 1.8 2010/11/26 07:19:01 espie Exp $

COMMENT=	tool for copying resources between repositories

MODULES=	cpan
DISTNAME=	VCP-autrijus-snapshot-0.9-20050110
PKGNAME=	p5-VCP-autrijus-0.9
REVISION =	0
CATEGORIES=	devel
CPAN_AUTHOR=	AUTRIJUS
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Regexp-Shellish>=0.93 \
		devel/p5-IPC-Run3>=0.01 \
		textproc/p5-XML-AutoWriter>=0.38 \
		textproc/p5-Text-Diff>=0.35 \
		textproc/p5-XML-Parser>=2.31 \
		www/p5-PodToHTML>=0.05
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
