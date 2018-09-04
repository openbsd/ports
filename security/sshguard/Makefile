# $OpenBSD: Makefile,v 1.13 2018/09/04 12:46:21 espie Exp $

COMMENT=	protect against brute force attacks on sshd and others

DISTNAME=	sshguard-1.5
REVISION=	6
CATEGORIES=	security

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c pthread

HOMEPAGE=	https://www.sshguard.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sshguard/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-firewall=pf

NO_TEST=	Yes

.include <bsd.port.mk>
