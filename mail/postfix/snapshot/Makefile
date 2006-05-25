# $OpenBSD: Makefile,v 1.130 2006/05/25 16:36:49 jakob Exp $

VERSION=	2.3-20060518

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

MAKE_CCARGS+=	-DUSE_SASL_AUTH

FLAVORS+=	dovecot 
FLAVOR?=

.if ${FLAVOR:L:Msasl2} && ${FLAVOR:L:Mdovecot}
ERRORS+=	"Fatal: Choose only one flavor: sasl2 or dovecot"
.endif

.if ${FLAVOR:L:Mdovecot}
RUN_DEPENDS+=	::mail/dovecot
MAKE_CCARGS+=	-DUSE_SASL_AUTH -DDEF_SASL_SERVER="dovecot"
.endif

.if ${FLAVOR:L:Msasl2}
MAKE_CCARGS+=	-DUSE_CYRUS_SASL
.endif

.include <bsd.port.mk>
