# $OpenBSD: Makefile,v 1.6 2013/03/11 11:41:28 espie Exp $

COMMENT=	protect against brute force attacks on sshd and others

DISTNAME=	sshguard-1.5
CATEGORIES=	security

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c pthread

HOMEPAGE=	http://www.sshguard.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sshguard/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes
NO_TEST=	Yes

FLAVORS =	tcpd
FLAVOR?=

.if ${FLAVOR:Mtcpd}
CONFIGURE_ARGS = --with-firewall=hosts
.else
CONFIGURE_ARGS = --with-firewall=pf 
.endif

.include <bsd.port.mk>
