# $OpenBSD: Makefile,v 1.1.1.1 2004/12/09 09:24:22 kevlo Exp $

COMMENT=	"tool for copying resources between repositories"

DISTNAME=	VCP-autrijus-snapshot-0.9-20041020
PKGNAME=	p5-VCP-autrijus-0.9
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/A/AU/AUTRIJUS/}

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

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
