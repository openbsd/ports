# $OpenBSD: libiconv.port.mk,v 1.2 2006/08/01 10:50:19 espie Exp $

# The RUN_DEPENDS entry is to ensure libiconv is installed. This is
# necessary so that we have charset.alias installed on static archs.
# Typically installed in PREFIX/lib.
LIB_DEPENDS+=	iconv.>=2::converters/libiconv
RUN_DEPENDS+=	:libiconv-*:converters/libiconv
