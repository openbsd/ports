# $OpenBSD: Makefile,v 1.6 2000/03/05 18:30:29 espie Exp $

DISTNAME=	tgif-4.1.25
CATEGORIES=	graphics
NEED_VERSION=	1.223
MASTER_SITES=	ftp://bourbon.cs.umd.edu/pub/tgif/ \
		ftp://ftp.cs.ucla.edu/pub/tgif/

MAINTAINER=	jakob@openbsd.org

RUN_DEPENDS=	giftopnm:graphics/netpbm

USE_IMAKE=	Yes

TGIFDOC=	${PREFIX}/share/doc/tgif
DEMO_FILES=	an-sr-flip-flop.obj launch-demo-1.obj \
		fonts.obj launch-demo.obj keys.obj slide-demo.obj example.tex
READMES=	Copyright HISTORY README

post-extract:
	@rm -f ${WRKDIR}/${DISTNAME}/Tgif.tmpl
	@cp ${WRKDIR}/${DISTNAME}/Tgif.tmpl-freebsd \
		${WRKDIR}/${DISTNAME}/Tgif.tmpl

post-install:
	@mkdir -p ${TGIFDOC}
	cd ${WRKSRC} ;\
		${INSTALL_DATA} ${DEMO_FILES} ${TGIFDOC} ;\
		${INSTALL_DATA} ${READMES} ${TGIFDOC}

.include <bsd.port.mk>
