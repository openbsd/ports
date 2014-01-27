# $OpenBSD: Makefile,v 1.7 2014/01/27 15:49:15 kirby Exp $

COMMENT=	protect against brute force attacks on sshd and others

DISTNAME=	sshguard-1.5
REVISION=	0
CATEGORIES=	security

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c pthread

HOMEPAGE=	http://www.sshguard.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sshguard/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu
NO_TEST=	Yes

FLAVORS =	tcpd
FLAVOR?=

.if ${FLAVOR:Mtcpd}
CONFIGURE_ARGS = --with-firewall=hosts
.else
CONFIGURE_ARGS = --with-firewall=pf 
.endif

.include <bsd.port.mk>
