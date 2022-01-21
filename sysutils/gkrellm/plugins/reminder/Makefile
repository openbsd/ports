# $OpenBSD: Makefile,v 1.24 2022/01/21 20:09:42 op Exp $

COMMENT=	GKrellM2 will remind you to do important events

V=		2.0.0
DISTNAME=	gkrellm-reminder-${V}
PKGNAME=	gkrellmreminder-${V}
REVISION=	11
CATEGORIES=	misc

HOMEPAGE=	http://members.dslextreme.com/users/billw/gkrellm/Plugins.html\#REMINDER

MASTER_SITES=	http://members.dslextreme.com/users/billw/gkrellm/Plugins/

EXTRA_WANTLIB=	gthread-2.0

PLUGIN=		${WRKSRC}/reminder.so

.include <bsd.port.mk>
