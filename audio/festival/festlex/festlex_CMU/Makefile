# $OpenBSD: Makefile,v 1.1.1.1 2004/07/11 06:21:51 jolan Exp $

COMMENT=	"CMU dictionary in festival form"
DISTNAME=	festlex_CMU

do-install:
	${INSTALL_DATA_DIR} ${LEX_PRE}/dicts/cmu
	${INSTALL_DATA} ${WRKDIST}/lib/dicts/cmu/*.{out,scm} ${LEX_PRE}/dicts/cmu

.include <bsd.port.mk>
