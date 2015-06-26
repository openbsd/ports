# $OpenBSD: Makefile,v 1.23 2015/06/26 18:08:40 ajacoutot Exp $

COMMENT=	GkrellM2 plugin to monitor multiple mailboxes

V=		2.4.3
DISTNAME=	gkrellm-mailwatch-${V}
PKGNAME=	gkrellmmailwatch-${V}
REVISION=	9
CATEGORIES=	mail

HOMEPAGE=	http://gkrellm.luon.net/mailwatch.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

EXTRA_WANTLIB=	gthread-2.0

WRKDIST=	${WRKDIR}/gkrellm-mailwatch
PLUGIN=		${WRKSRC}/mailwatch.so

.include <bsd.port.mk>
