# $OpenBSD: Makefile,v 1.3 2000/10/22 15:42:32 espie Exp $

DISTNAME=		majordomo-1.94.5
CATEGORIES=     	mail
NEED_VERSION=		1.282

HOMEPAGE=		http://www.greatcircle.com/majordomo/

MAINTAINER=		daniel@reichardt.ch

# I sent a mail to greatcircle.com asking for these permissions.
# Until I get an answer, I assume nothing. 
# Read http://www.greatcircle.com/majordomo/LICENSE
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES=		ftp://ftp.greatcircle.com/pub/majordomo/1.94.5/

MAKE_FLAGS=		W_HOME=${PREFIX}/lib/majordomo
MAKE_FLAGS+=		W_PATH=/bin:/usr/bin
MAKE_FLAGS+=		W_MAJORDOMO_CFDIR=/etc/majordomo
MAKE_FLAGS+=		W_MAJORDOMO_CF=majordomo.cf
MAKE_FLAGS+=		POSIX=""
ALL_TARGET=		wrapper

FAKE_FLAGS=		W_HOME=${WRKINST}${PREFIX}/lib/majordomo
FAKE_FLAGS+=		MAN=${WRKINST}${PREFIX}/man
FAKE_FLAGS+=		PERL=/usr/bin/perl
FAKE_FLAGS+=		W_USER=0
FAKE_FLAGS+=		W_GROUP=0
FAKE_FLAGS+=		HOME_MODE=755
FAKE_FLAGS+=		EXEC_MODE=755
FAKE_FLAGS+=		FILE_MODE=644
FAKE_FLAGS+=		WRAPPER_OWNER=0
FAKE_FLAGS+=		WRAPPER_GROUP=0
FAKE_FLAGS+=		WRAPPER_MODE=644
FAKE_FLAGS+=		TMPDIR=${WRKDIST}
FAKE_TARGET=		install-scripts install-wrapper install-man

DOCDIR=${PREFIX}/share/doc/majordomo
post-install:
	@${INSTALL_DATA} ${WRKSRC}/sample.cf			${PREFIX}/lib/majordomo
	@${INSTALL_DATA_DIR}					${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Changelog			${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/FUTURE			${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/INSTALL			${DOCDIR}	
	@${INSTALL_DATA} ${WRKSRC}/LICENSE			${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/NEWLIST			${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/README			${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/FAQ			${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/README.sequencer		${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/list-owner-info		${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/majordomo-faq.html	${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/majordomo.lisa6.ps	${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/majordomo.ora		${DOCDIR}
	@${INSTALL_DATA} ${FILESDIR}/post-install-notes		${DOCDIR}

.include <bsd.port.mk>
