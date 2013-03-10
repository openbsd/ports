# $OpenBSD: Makefile,v 1.3 2013/03/10 22:55:02 espie Exp $

COMMENT=	oxford advanced learners' dictiction of current english
DISTNAME=	festlex_OALD

PERMIT_PACKAGE_CDROM=	no fee

do-install:
	${INSTALL_DATA_DIR} ${LEX_PRE}/dicts/oald
	${INSTALL_DATA} ${WRKDIST}/lib/dicts/oald/{COPYING,*.out,*.scm} \
		${LEX_PRE}/dicts/oald

.include <bsd.port.mk>
