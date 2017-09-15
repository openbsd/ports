# $OpenBSD: Makefile,v 1.23 2017/09/15 15:37:18 naddy Exp $

COMMENT=	GKrellM2 will remind you to do important events

V=		2.0.0
DISTNAME=	gkrellm-reminder-${V}
PKGNAME=	gkrellmreminder-${V}
REVISION=	10
CATEGORIES=	misc

HOMEPAGE=	http://members.dslextreme.com/users/billw/gkrellm/Plugins.html\#REMINDER

MASTER_SITES=	http://members.dslextreme.com/users/billw/gkrellm/Plugins/

EXTRA_WANTLIB=	gthread-2.0

PLUGIN=		${WRKSRC}/reminder.so

.include <bsd.port.mk>
