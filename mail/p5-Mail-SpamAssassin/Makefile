# $OpenBSD: Makefile,v 1.17 2003/02/03 20:28:24 lebel Exp $

COMMENT=		"mailfilter to identify and mark spam"

DISTNAME=		Mail-SpamAssassin-2.44
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5

HOMEPAGE=		http://spamassassin.org

MAINTAINER=		Han Boetes <han@mijncomputer.nl>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/released/ \
			${MASTER_SITE_PERL_CPAN:=Mail/}

RUN_DEPENDS=		:p5-Net-DNS-*:net/p5-Net-DNS \
			:p5-HTML-Parser-*:www/p5-HTML-Parser \
			:procmail-*:mail/procmail

CONFIGURE_STYLE=	perl

SAMPLE_CONFIG_DIR=	${PREFIX}/share/examples/SpamAssassin
CONFIG_DIR=		${SYSCONFDIR}/mail/spamassassin
INSTALL_TARGET=		PKG_LOCAL_RULES_DIR=${WRKINST}${SAMPLE_CONFIG_DIR} install

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
