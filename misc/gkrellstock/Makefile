# $OpenBSD: Makefile,v 1.7 2002/06/23 23:57:18 jcs Exp $

DISTNAME=	gkrellstock-0.4
CATEGORIES=	misc
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"gkrellm plugin to display stock quotes"
HOMEPAGE=	http://gkrellstock.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellstock/}

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes
NO_REGRESS=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

WRKDIST=	${WRKDIR}/gkrellStock-0.4
BUILD_DEPENDS=	:gkrellm-*:sysutils/gkrellm
RUN_DEPENDS=	${BUILD_DEPENDS} \
		:p5-Finance-Quote-*:misc/p5-Finance-Quote
ALL_TARGET=	

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/gkrellstock.so \
		${PREFIX}/lib/gkrellm/plugins
	@mkdir -p ${PREFIX}/libdata/perl5/site_perl/Finance/Quote/
	${INSTALL_DATA} ${WRKSRC}/Asia.pm \
		${PREFIX}/libdata/perl5/site_perl/Finance/Quote/
	${INSTALL_SCRIPT} ${WRKSRC}/GetQuote ${PREFIX}/bin

.include <bsd.port.mk>
