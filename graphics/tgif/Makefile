# $OpenBSD: Makefile,v 1.1.1.1 1999/09/12 14:08:53 jakob Exp $

# What port/package will be created
#
DISTNAME=	tgif-4.1.18
CATEGORIES=	graphics

# where to send comments about this port
#
MAINTAINER=     jakob@openbsd.org

# where the source files can be fetched
#
MASTER_SITES=	ftp://bourbon.cs.umd.edu/pub/tgif/ \
		ftp://ftp.cs.ucla.edu/pub/tgif/

# build/configuration variables
RUN_DEPENDS=	giftopnm:${PORTSDIR}/graphics/netpbm

USE_IMAKE=	yes
MAN1=		tgif.1
TGIFDOC=	${PREFIX}/share/doc/tgif
DEMO_FILES=	an-sr-flip-flop.obj launch-demo-1.obj \
		fonts.obj launch-demo.obj keys.obj slide-demo.obj example.tex
READMES=	Copyright HISTORY README

post-extract:
		${RM} -f ${WRKDIR}/${DISTNAME}/Tgif.tmpl
		${CP} ${WRKDIR}/${DISTNAME}/Tgif.tmpl-freebsd \
		      ${WRKDIR}/${DISTNAME}/Tgif.tmpl
post-install:
		${MKDIR} ${TGIFDOC}
		(cd ${WRKSRC} ;\
		  ${INSTALL_DATA} ${DEMO_FILES} ${TGIFDOC} ;\
		  ${INSTALL_DATA} ${READMES} ${TGIFDOC} ;\
		)

.include <bsd.port.mk>
