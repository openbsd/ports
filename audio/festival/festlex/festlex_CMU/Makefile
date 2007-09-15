# $OpenBSD: Makefile,v 1.3 2007/09/15 22:27:38 simon Exp $

COMMENT=	CMU dictionary in festival form
DISTNAME=	festlex_CMU

do-install:
	${INSTALL_DATA_DIR} ${LEX_PRE}/dicts/cmu
	${INSTALL_DATA} ${WRKDIST}/lib/dicts/cmu/*.{out,scm} \
		${WRKDIST}/lib/dicts/cmu/COPYING ${LEX_PRE}/dicts/cmu

.include <bsd.port.mk>
