COMMENT=		SMTP/LMTP proxy for Spamassassin

GH_ACCOUNT=		mpaperno
GH_PROJECT=		spampd
GH_TAGNAME=		2.62

CATEGORIES=		mail

HOMEPAGE=		http://www.worlddesign.com/index.cfm/page/software/open-source/spampd.htm

# GPLv3+
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Net-Server \
			mail/p5-Mail-SpamAssassin

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	cd ${WRKSRC} && \
		pod2man --section=8 --center="Spam Proxy Daemon" spampd.pl > spampd.8
	${INSTALL_MAN} ${WRKBUILD}/spampd.8 ${PREFIX}/man/man8/spampd.8
	${INSTALL_SCRIPT} ${WRKSRC}/spampd.pl ${PREFIX}/sbin/spampd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/spampd
	${INSTALL_DATA} ${WRKSRC}/misc/spampd.cfg ${PREFIX}/share/examples/spampd
	${INSTALL_DATA} ${WRKSRC}/misc/spampd-sm.cfg ${PREFIX}/share/examples/spampd

.include <bsd.port.mk>
