# $OpenBSD: Makefile,v 1.16 2008/01/12 19:15:37 okan Exp $

COMMENT=	mailing list manager

DISTNAME=	majordomo-1.94.5
PKGNAME=	${DISTNAME}p3
CATEGORIES=     mail

HOMEPAGE=	http://www.greatcircle.com/majordomo/

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

# I sent a mail to greatcircle.com asking for these permissions.
# Until I get an answer, I assume nothing. 
# Read http://www.greatcircle.com/majordomo/LICENSE
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No
WANTLIB=		c

MASTER_SITES=	ftp://ftp.sgi.com/other/majordomo/1.94.5/ \
		ftp://ftp.greatcircle.com/pub/majordomo/1.94.5/
EXTRACT_SUFX=	.tgz

ALL_TARGET=	wrapper
MAKE_FLAGS+=	W_HOME=${PREFIX}/lib/majordomo \
		W_PATH=/bin:/usr/bin \
		W_MAJORDOMO_CFDIR=${SYSCONFDIR}/majordomo \
		W_MAJORDOMO_CF=majordomo.cf \
		POSIX=""

NO_REGRESS=	Yes

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
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," \
		${DOCDIR}/post-install-notes

.include <bsd.port.mk>
