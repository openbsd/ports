# $OpenBSD: Makefile,v 1.2 2014/03/21 11:01:33 jasper Exp $

COMMENT=		SMTP/LMTP proxy for Spamassassin

DISTNAME=		spampd-2.30
REVISION=		0
CATEGORIES=		mail

HOMEPAGE=		http://www.worlddesign.com/index.cfm/page/rd/mta/spampd.htm
MAINTAINER=		Henrik Friedrichsen <openbsd@diff.cc>

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
