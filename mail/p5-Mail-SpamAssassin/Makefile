# $OpenBSD: Makefile,v 1.30 2004/08/06 01:39:09 ian Exp $

COMMENT=		"mailfilter to identify and mark spam"

DISTNAME=		Mail-SpamAssassin-2.64
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5

MAINTAINER=		Ben Lovett <ben@tilderoot.com>

HOMEPAGE=		http://spamassassin.apache.org/

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://old.spamassassin.org/released/ \
			${MASTER_SITE_PERL_CPAN:=Mail/}

BUILD_DEPENDS=		:p5-HTML-Parser-*:www/p5-HTML-Parser
RUN_DEPENDS=		:p5-Net-DNS-*:net/p5-Net-DNS \
			:p5-HTML-Parser-*:www/p5-HTML-Parser

MAKE_ENV+=		CC="${CC}"

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	RUN_RAZOR_TESTS="no" \
			SYSCONFDIR=${SYSCONFDIR} \
			CONTACT_ADDRESS="the administrator of that system"

CONFDIR=		${SYSCONFDIR}/mail/spamassassin
RULES_DIR=		${PREFIX}/share/spamassassin
SAMPLE_CONFDIR=		${PREFIX}/share/examples/SpamAssassin

SUBST_VARS=		CONFDIR SAMPLE_CONFDIR

FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} \
			PKG_DEF_RULES_DIR=${WRKINST}${RULES_DIR} \
			PKG_LOCAL_RULES_DIR=${WRKINST}${SAMPLE_CONFDIR}

# regress insists on creating files in $HOME
PORTHOME=		${WRKDIR}/temp-home

FAQS=	${FILESDIR}/OpenBSD-SpamAssassin-mini-howto.html
DOCS=	README procmailrc.example \
	sample-nonspam.txt sample-spam.txt
LOCALCF=	rules/local.cf

post-patch:
	@perl -pi -e "s#\@\@LOCAL_RULES_DIR\@\@#${CONFDIR}#" ${WRKSRC}/rules/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin
	${INSTALL_DATA_DIR} ${SAMPLE_CONFDIR}
	${INSTALL_DATA} ${FAQS} ${PREFIX}/share/doc/SpamAssassin
	cd ${WRKSRC} && ${INSTALL_DATA} ${LOCALCF} ${SAMPLE_CONFDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/SpamAssassin
	cd ${WRKSRC} && pod2man --section=1 spamd/spamc.pod > \
	    ${PREFIX}/man/man1/spamc.1
	cd ${WRKSRC} && pod2man --section=8 spamd/spamd > \
	    ${PREFIX}/man/man8/spamd.8

pre-regress:
	mkdir -p ${PORTHOME}

.include <bsd.port.mk>
