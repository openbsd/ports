# $OpenBSD: Makefile,v 1.5 2001/01/21 23:34:58 danh Exp $

DISTNAME=	majordomo-1.94.5
CATEGORIES=     mail
NEED_VERSION=	1.351
MASTER_SITES=	ftp://ftp.greatcircle.com/pub/majordomo/1.94.5/

HOMEPAGE=	http://www.greatcircle.com/majordomo/

MAINTAINER=	Daniel Hartmeier <daniel@reichardt.ch>

# I sent a mail to greatcircle.com asking for these permissions.
# Until I get an answer, I assume nothing. 
# Read http://www.greatcircle.com/majordomo/LICENSE
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

ALL_TARGET=	wrapper
MAKE_FLAGS+=	W_HOME=${PREFIX}/lib/majordomo \
		W_PATH=/bin:/usr/bin \
		W_MAJORDOMO_CFDIR=/etc/majordomo \
		W_MAJORDOMO_CF=majordomo.cf \
		POSIX=""

FAKE_TARGET=	install-scripts install-wrapper install-man
FAKE_FLAGS+=	W_HOME=${WRKINST}${PREFIX}/lib/majordomo \
		MAN=${WRKINST}${PREFIX}/man \
		PERL=/usr/bin/perl \
		W_USER=0 W_GROUP=0 \
		HOME_MODE=755 EXEC_MODE=755 FILE_MODE=644 \
		WRAPPER_OWNER=0 WRAPPER_GROUP=0 WRAPPER_MODE=644 \
		TMPDIR=${WRKDIST}

DOCDIR=${PREFIX}/share/doc/majordomo

post-install:
	@${INSTALL_DATA} ${WRKSRC}/sample.cf ${PREFIX}/lib/majordomo
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Changelog ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/FUTURE ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/INSTALL ${DOCDIR}	
	@${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/NEWLIST ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/FAQ ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/README.sequencer	${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/list-owner-info ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/majordomo-faq.html ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/majordomo.lisa6.ps ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/Doc/majordomo.ora ${DOCDIR}
	@${INSTALL_DATA} ${FILESDIR}/post-install-notes	${DOCDIR}

.include <bsd.port.mk>
