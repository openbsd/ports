# $OpenBSD: Makefile,v 1.5 2002/03/21 21:09:20 espie Exp $
# $NetBSD: Makefile,v 1.1.1.1 2000/04/10 01:14:01 jtk Exp $

COMMENT=	'PPTP client package for Microsoft VPN servers'
DISTNAME=	pptp-linux-1.0.2
PKGNAME=	pptp-1.0.2
NEED_VERSION=	1.515
CATEGORIES=	net
MASTER_SITES= 	http://cag.lcs.mit.edu/~cananian/Synaptics/release/

HOMEPAGE=	http://cag.lcs.mit.edu/~cananian/Projects/PPTP/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes 
PERMIT_PACKAGE_FTP=     Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=   Yes

# bbaa: workaround for buggy Alcatel ADSL 1000 modems
FLAVORS+=	bbaa
FLAVOR?= 

.if ${FLAVOR:L:Mbbaa}
# needs a slightly modified patch; backup default patch
pre-patch:
		@cp -p ${PATCHDIR}/patch-pptc_ctrl_c ${PATCHDIR}/patch-pptc_ctrl_c.orig
		@cp ${FILESDIR}/patch-pptc_ctrl_c ${PATCHDIR}/patch-pptc_ctrl_c
.endif

post-patch:
		@cd ${WRKSRC}; sed -e s,PREFIX,${PREFIX}, \
			< ${FILESDIR}/pptp_8 > pptp.8
		@cd ${WRKSRC}; sed -e s,PREFIX,${PREFIX}, \
			< ${FILESDIR}/pptp_reconnect > pptp-reconnect

.if ${FLAVOR:L:Mbbaa}
# move default patch back
post-install:
		@mv ${PATCHDIR}/patch-pptc_ctrl_c.orig ${PATCHDIR}/patch-pptc_ctrl_c
.endif

.include <bsd.port.mk>
