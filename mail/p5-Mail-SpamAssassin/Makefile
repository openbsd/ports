# $OpenBSD: Makefile,v 1.26 2003/12/07 23:15:19 naddy Exp $

COMMENT=		"mailfilter to identify and mark spam"

DISTNAME=		Mail-SpamAssassin-2.55
PKGNAME=		p5-${DISTNAME}p2
CATEGORIES=		mail perl5

HOMEPAGE=		http://spamassassin.org/

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}released/ \
			${MASTER_SITE_PERL_CPAN:=Mail/}

RUN_DEPENDS=		:p5-Net-DNS-*:net/p5-Net-DNS \
			:p5-HTML-Parser-*:www/p5-HTML-Parser

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS=		RUN_RAZOR1_TESTS=n RUN_RAZOR2_TESTS=n

SAMPLE_CONFIG_DIR=	${PREFIX}/share/examples/SpamAssassin
CONFIG_DIR=		${SYSCONFDIR}/mail/spamassassin
RULES_DIR=		${PREFIX}/share/spamassassin

FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} \
			PKG_DEF_RULES_DIR=${WRKINST}${RULES_DIR} \
			PKG_LOCAL_RULES_DIR=${WRKINST}${SAMPLE_CONFIG_DIR}

# regress insists on creating files in $HOME
PORTHOME=		${WRKDIR}/temp-home

FAQS=	${FILESDIR}/OpenBSD-SpamAssassin-mini-howto.html
DOCS=	README procmailrc.example \
	sample-nonspam.txt sample-spam.txt

post-patch:
	perl -pi -e "s#\@\@LOCAL_RULES_DIR\@\@#${CONFIG_DIR}#" ${WRKSRC}/rules/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin
	${INSTALL_DATA} ${FAQS} ${PREFIX}/share/doc/SpamAssassin
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/SpamAssassin
	cd ${WRKSRC} && pod2man --section=1 spamd/spamc.pod > \
	    ${PREFIX}/man/man1/spamc.1
	cd ${WRKSRC} && pod2man --section=8 spamd/spamd > \
	    ${PREFIX}/man/man8/spamd.8

pre-regress:
	mkdir -p ${PORTHOME}

.include <bsd.port.mk>
