# $OpenBSD: Makefile,v 1.87 2014/04/30 14:01:29 naddy Exp $

COMMENT=		mailfilter to identify and mark spam

VER=			3.4.0
REVISION=		2
DISTNAME=		Mail-SpamAssassin-${VER}
PKGNAME=		p5-${DISTNAME}
RULESNAME=		Mail-SpamAssassin-rules-${VER}.r1565117.tgz
CATEGORIES=		mail perl5

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} ${RULESNAME}
EXTRACT_SUFX=		.tar.bz2
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=		http://spamassassin.apache.org/

# Apache Software License (v2)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto ssl z

MASTER_SITES=		${MASTER_SITE_APACHE:=spamassassin/source/}

COMMON_DEPENDS=		www/p5-HTML-Parser>=3.31 \
			mail/p5-Mail-DKIM>=0.31 \
			net/p5-Net-DNS>=0.34 \
			net/p5-NetAddr-IP \
			net/p5-IO-Socket-IP \
			security/p5-IO-Socket-SSL

BUILD_DEPENDS=		${COMMON_DEPENDS}
RUN_DEPENDS=		${COMMON_DEPENDS} \
			devel/re2c \
			p5-Mail-SPF-*|p5-Mail-SPF-Query-*:mail/p5-Mail-SPF \
			net/p5-Geo-IP \
			net/p5-Net-Patricia \
			security/gnupg \
			textproc/p5-Encode-Detect \
			www/p5-libwww
# SpamAssassin can use curl instead of LWP (lighter dep chain), but it needs
# a separate HTTP::Date, our LWP pre-dates this being split off.
TEST_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV+=		CC="${CC}"

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	DESTDIR=${WRKINST} \
			SYSCONFDIR=${SYSCONFDIR} \
			LOCALSTATEDIR=${LOCALSTATEDIR} \
			CONTACT_ADDRESS="the administrator of this system" \
			ENABLE_SSL="yes"

CONFDIR=		${SYSCONFDIR}/mail/spamassassin
LOCALSTATEDIR=		/var/db/spamassassin
SAMPLE_CONFDIR=		${PREFIX}/share/examples/SpamAssassin

SUBST_VARS=		CONFDIR

# test insists on creating files in $HOME
PORTHOME=		${WRKDIR}/temp-home

DOCS=		CREDITS NOTICE README UPGRADE USAGE LICENSE TRADEMARK \
		procmailrc.example sample-nonspam.txt sample-spam.txt

# handling this in the extract stage (rather than untarring directly under
# PREFIX in post-install) allows us to patch the rules if necessary.
_R=		${WRKSRC}/_dist_rules
post-extract:
	mkdir ${_R} && cd ${_R} && tar xzf ${FULLDISTDIR}/${RULESNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin/sql
	${INSTALL_DATA_DIR} ${SAMPLE_CONFDIR}
	pod2man --section=1 ${WRKSRC}/spamc/spamc.pod > \
		${PREFIX}/man/man1/spamc.1
	${INSTALL_DATA} ${WRKSRC}/rules/local.cf ${WRKSRC}/rules/*.pre \
		${SAMPLE_CONFDIR}
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/SpamAssassin
.endfor
	${INSTALL_DATA} ${WRKSRC}/sql/* ${PREFIX}/share/doc/SpamAssassin/sql
	cp -r ${_R}/* ${PREFIX}/share/spamassassin/
	chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/spamassassin/*

pre-test:
	mkdir -p ${PORTHOME}

.include <bsd.port.mk>
