COMMENT=	Postfix log entry summarizer

DISTNAME=	pflogsumm-1.1.12
CATEGORIES=	mail

SITES=		http://jimsun.linxnet.com/downloads/

HOMEPAGE=	http://jimsun.linxnet.com/postfix_contrib.html

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/p5-Date-Calc>=5.3 \
		devel/p5-Config-Simple

do-install:
	cd ${WRKSRC}; \
	    ${INSTALL_SCRIPT} pflogsumm pffrombyto pftobyfrom ${PREFIX}/bin/; \
	    ${INSTALL_MAN} *.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
