# $OpenBSD: Makefile,v 1.5 2002/03/21 21:09:19 espie Exp $

DISTNAME=	gkrellstock-0.2
CATEGORIES=	misc
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"gkrellm plugin to display stock quotes"
HOMEPAGE=	http://www.geocities.com/m_muthukumar/gkrellstock.html
MASTER_SITES=	http://www.geocities.com/m_muthukumar/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes
NO_REGRESS=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

WRKDIST=	${WRKDIR}/gkrellStock-0.2
BUILD_DEPENDS=	::sysutils/gkrellm
RUN_DEPENDS=	::sysutils/gkrellm \
		::misc/p5-Finance-Quote
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
