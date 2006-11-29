# $OpenBSD: Makefile,v 1.3 2006/11/29 08:23:31 espie Exp $

COMMENT=	"tool for copying resources between repositories"

MODULES=	cpan
DISTNAME=	VCP-autrijus-snapshot-0.9-20050110
PKGNAME=	p5-VCP-autrijus-0.9p0
CATEGORIES=	devel
CPAN_AUTHOR=	AUTRIJUS

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:p5-Regexp-Shellish->=0.93:devel/p5-Regexp-Shellish \
		:p5-IPC-Run3->=0.01:devel/p5-IPC-Run3 \
		:p5-XML-AutoWriter->=0.38:textproc/p5-XML-AutoWriter \
		:p5-Text-Diff->=0.35:textproc/p5-Text-Diff \
		:p5-XML-Parser->=2.31:textproc/p5-XML-Parser \
		:p5-PodToHTML->=0.05:www/p5-PodToHTML
RUN_DEPENDS=	${BUILD_DEPENDS}

.include <bsd.port.mk>
