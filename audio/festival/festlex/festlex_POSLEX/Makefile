# $OpenBSD: Makefile,v 1.1.1.1 2004/07/11 06:21:51 jolan Exp $

COMMENT=	"part of speech lexicons and ngram from English"
DISTNAME=	festlex_POSLEX

do-install:
	${INSTALL_DATA_DIR} ${LEX_PRE}/dicts
	${INSTALL_DATA} ${WRKDIST}/lib/dicts/* ${LEX_PRE}/dicts

.include <bsd.port.mk>
