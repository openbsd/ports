# $OpenBSD: Makefile,v 1.5 2014/11/29 10:18:48 ajacoutot Exp $

COMMENT=		SMTP/LMTP proxy for Spamassassin

DISTNAME=		spampd-2.30
REVISION=		3

CATEGORIES=		mail

HOMEPAGE=		http://www.worlddesign.com/index.cfm/page/rd/mta/spampd.htm
MAINTAINER=		Henrik Friedrichsen <henrik@diff.cc>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		http://www.worlddesign.com/Content/rd/mta/spampd/

RUN_DEPENDS=		devel/p5-Net-Server \
			mail/p5-Mail-SpamAssassin

PKG_ARCH=		*
NO_BUILD=		Yes

do-install:
	cd ${WRKSRC} && \
		pod2man --section=8 --center="Spam Proxy Daemon" spampd > spampd.8
	${INSTALL_MAN} ${WRKBUILD}/spampd.8 ${PREFIX}/man/man8/spampd.8
	${INSTALL_SCRIPT} ${WRKSRC}/spampd ${PREFIX}/sbin/spampd

.include <bsd.port.mk>
