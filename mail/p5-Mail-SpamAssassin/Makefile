# $OpenBSD: Makefile,v 1.33 2005/01/02 01:07:48 alek Exp $

COMMENT=		"mailfilter to identify and mark spam"

DISTNAME=		Mail-SpamAssassin-3.0.2
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5

MAINTAINER=		Ben Lovett <ben@tilderoot.com>

HOMEPAGE=		http://spamassassin.apache.org/

# Apache Software License (v2)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_APACHE:=spamassassin/}

BUILD_DEPENDS=		:p5-HTML-Parser-*:www/p5-HTML-Parser \
			:p5-Digest-SHA1-*:security/p5-Digest-SHA1
RUN_DEPENDS=		:p5-Net-DNS-*:net/p5-Net-DNS \
			:p5-HTML-Parser-*:www/p5-HTML-Parser

MAKE_ENV+=		CC="${CC}"

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	RUN_NET_TESTS="no" \
			SYSCONFDIR=${SYSCONFDIR} \
			CONTACT_ADDRESS="the administrator of this system"

CONFDIR=		${SYSCONFDIR}/mail/spamassassin
RULES_DIR=		${PREFIX}/share/spamassassin
SAMPLE_CONFDIR=		${PREFIX}/share/examples/SpamAssassin

SUBST_VARS=		CONFDIR SAMPLE_CONFDIR

FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} \
			DEFRULESDIR=${WRKINST}${RULES_DIR} \
			LOCALRULESDIR=${WRKINST}${SAMPLE_CONFDIR}

# regress insists on creating files in $HOME
PORTHOME=		${WRKDIR}/temp-home

FAQ=	OpenBSD-SpamAssassin-mini-howto.html
DOCS=	README UPGRADE LICENSE procmailrc.example \
	sample-nonspam.txt sample-spam.txt
LOCALCF=	rules/local.cf

post-patch:
	@perl -pi -e "s#\@\@LOCAL_RULES_DIR\@\@#${CONFDIR}#" ${WRKSRC}/rules/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin
	${INSTALL_DATA_DIR} ${SAMPLE_CONFDIR}
	@sed -e "s|@SYSCONFDIR@|${SYSCONFDIR}|" \
	    -e "s|@PREFIX@|${TRUEPREFIX}|" \
	    ${FILESDIR}/${FAQ} > ${WRKSRC}/${FAQ}
	cd ${WRKSRC} && ${INSTALL_DATA} ${FAQ} ${PREFIX}/share/doc/SpamAssassin
	cd ${WRKSRC} && ${INSTALL_DATA} ${LOCALCF} ${SAMPLE_CONFDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/SpamAssassin
	cd ${WRKSRC} && pod2man --section=1 spamc/spamc.pod > \
	    ${PREFIX}/man/man1/spamc.1
	cd ${WRKSRC} && pod2man --section=8 spamd/spamd > \
	    ${PREFIX}/man/man8/spamd.8

pre-regress:
	mkdir -p ${PORTHOME}

.include <bsd.port.mk>
